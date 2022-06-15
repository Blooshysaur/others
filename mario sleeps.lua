--name: Mario is tired
--description: Mario will sleep when idle. Author: Blooshy

function mario_sleeps(m)
    if m.action == ACT_IDLE then
    set_mario_action(m, ACT_START_SLEEPING, 0)
    print("Mario is currently sleeping")
    end
end
hook_event(HOOK_BEFORE_MARIO_UPDATE,mario_sleeps)