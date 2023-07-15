pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Option<Player> {
        if self.health == 0_u32 {
            if self.level >= 10 {
                println!("{}", self.level);
                Some(Player {
                    health: 100,
                    mana: Some(100),
                    level: self.level,
                })
            } else {
                Some(Player {
                    health: 100,
                    mana: None,
                    level: self.level,
                })
            }
        } else {
            None
        }
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {
        match self.mana {
            Some(x) => {
                if mana_cost > x {
                    0
                } else {
                    self.mana = Some(x - mana_cost);
                    mana_cost * 2
                }
            }
            None => {
                let new_health = self.health as i32 - mana_cost as i32;
                println!("{}", self.health);
                println!("{}", mana_cost);
                match new_health {
                    new_health if new_health <= 0 => {
                        self.health = 0;
                        0_u32
                    }
                    new_health if new_health > 0 => {
                        self.health = new_health as u32;
                        0
                    }
                    _ => 0,
                }
            }
        }
    }
}
