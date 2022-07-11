-- name: Ground Pound Cancel v1.1b
-- description: made by blooshy, allows Mario & co to cancel ground pound by pressing A while doing it.
gp = 1
function gp_cancel(m)

if m.action == ACT_GROUND_POUND  and (m.input & INPUT_A_PRESSED) ~= 0 and gp == 1 then
    set_mario_action(m, ACT_FREEFALL, 0)
    m.vel.y = 0
    gp = 0
    
end

--floor (whats the argument for floor)
if m.action == ACT_IDLE then
gp = 1
end
end

hook_event(HOOK_BEFORE_MARIO_UPDATE,gp_cancel)