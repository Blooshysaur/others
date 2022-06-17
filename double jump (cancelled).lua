
-- description: Allows double jump

function djump(m)
    if m.action == ACT_DIVE or ACT_JUMP_KICK  then
        m.vel.y = 45
        set_mario_action(m,ACT_SPAWN_SPIN_LANDING)
    end
end

hook_event(HOOK_ON_SET_MARIO_ACTION,djump)

--bug to fix: make so mario doesn't get crazy height when diving normally. (maybe press A&B at the same time)