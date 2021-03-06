// linearizing.sce

// steps before
// 1. Open edsonj.m and execute from editor "Execute > file with echo".
// 2. Open edsonjXcosLincos.zcos run the simulation using "start" button.
// 3. Then run this file

// Search the SUPERBLOCK in Xcos
for i=1:length(scs_m.objs)
    if typeof(scs_m.objs(i))=="Block" & scs_m.objs(i).gui=="SUPER_f" then
        scs_m = scs_m.objs(i).model.rpar;
        break;
    end
end

// Set the equilibrium point, in this case cruise speed of u=1.5 m/s
U=[0];
X=[0];
// linearize the model
sys = lincos(scs_m,X,U);

// obtaingin the matrices A,B,C,D
A=sys.A
B=sys.B
C=sys.C
D=sys.D

// save the data
save("edsonjLTI.sod","X","U","sys")

// load the data
//load("edsonjLTI.sod","X","U","sys")
