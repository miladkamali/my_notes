use std::sync::{Arc, Mutex, Condvar};
use std::thread;
use std::time::{Instant, Duration};

fn main() {
    const ITERATIONS: u32 = 100_000;

    // 0 = A's turn, 1 = B's turn, -1 = Stop
    let state = Arc::new((Mutex::new(0), Condvar::new()));
    let state_clone = Arc::clone(&state);

    // Thread B (The Responder)
    let responder = thread::spawn(move || {
        let (lock, cvar) = &*state_clone;
        
        loop {
            let mut turn = lock.lock().unwrap();
            // Wait while it is A's turn (0)
            turn = cvar.wait_while(turn, |t| *t == 0).unwrap();
            
            if *turn == -1 { break; } // Exit condition
            
            *turn = 0; // Give turn back to A
            drop(turn); // Drop lock before notifying
            cvar.notify_one();
        }
    });

    // Thread A (The Measurer)
    let (lock, cvar) = &*state;
    let mut total_rtt = Duration::new(0, 0);

    for _ in 0..ITERATIONS {
        let start = Instant::now();
        
        {
            let mut turn = lock.lock().unwrap();
            *turn = 1; // Give turn to B
        }
        cvar.notify_one();

        {
            // FIX 1: Removed 'mut' because we only read the value here
            let turn = lock.lock().unwrap(); 
            
            // FIX 2: Used drop() instead of 'let _ =' to explicitly release the lock
            drop(cvar.wait_while(turn, |t| *t != 0).unwrap()); 
        }
        
        total_rtt += start.elapsed();
    }

    // Stop Thread B
    {
        let mut turn = lock.lock().unwrap();
        *turn = -1;
    }
    cvar.notify_one();
    responder.join().unwrap();

    println!("Average Rust CV RTT: {} ns", total_rtt.as_nanos() / ITERATIONS as u128);
}
