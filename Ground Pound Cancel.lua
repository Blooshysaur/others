-- name: Ground Pound Cancel
-- description: Cancels Ground Pound by pressing A.\n Made by blooshy.
function gp_cancel(m)
if m.action == ACT_GROUND_POUND  and (m.input & INPUT_A_PRESSED) ~= 0 then
    set_mario_action(m,ACT_FORWARD_ROLLOUT, 0)
    m.vel.y = 0    
end

end

hook_event(HOOK_BEFORE_MARIO_UPDATE,gp_cancel)