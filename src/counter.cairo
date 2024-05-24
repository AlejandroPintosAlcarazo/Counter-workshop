#[starknet::contract]
mod Counter {
    #[storage]
    struct Storage {
    counter: u32 
    }
}
#[constructor]
    fn constructor(ref self: ContractState, initial_counter: u32) {
        self.counter.write(initial_counter);
    }
  fn get_counter(self: @ContractState) -> u32 {
            self.counter.read()
        }
