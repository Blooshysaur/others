-- name: Mario becomes clumsy v1.25
-- description: Mario will fall when he gets too much speed or after a landing.

function clumsy(m)
    --actions 
    if m.action == ACT_JUMP_LAND then
        set_mario_action(m,ACT_FORWARD_AIR_KB, 0)
    end
    if m.action == ACT_LONG_JUMP_LAND then
        set_mario_action(m,ACT_FORWARD_GROUND_KB, 0)
    end
    if m.action == ACT_DOUBLE_JUMP then
        set_mario_action(m,ACT_FORWARD_AIR_KB, 0)
    end
    if m.action == ACT_TRIPLE_JUMP_LAND then
        set_mario_action(m,ACT_FORWARD_GROUND_KB, 0)
    end
    if m.action == ACT_FREEFALL then
        set_mario_action(m,ACT_FORWARD_GROUND_KB, 0)
    end

    if m.action == ACT_JUMP_KICK then
        set_mario_action(m,ACT_FORWARD_AIR_KB, 0)
    end

--speed limit (replace the vel.x and vel z by the global speed variable once i actually fucking find it)
    if m.forwardVel >= 35 then
        set_mario_action(m,ACT_FORWARD_AIR_KB, 0)
    end

end

hook_event(HOOK_BEFORE_MARIO_UPDATE,clumsy)



