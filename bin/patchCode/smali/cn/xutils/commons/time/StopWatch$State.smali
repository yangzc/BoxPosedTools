.class abstract enum Lcn/xutils/commons/time/StopWatch$State;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/time/StopWatch$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/time/StopWatch$State;

.field public static final enum RUNNING:Lcn/xutils/commons/time/StopWatch$State;

.field public static final enum STOPPED:Lcn/xutils/commons/time/StopWatch$State;

.field public static final enum SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

.field public static final enum UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/time/StopWatch$State;
    .locals 3

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/xutils/commons/time/StopWatch$State;

    const/4 v1, 0x0

    sget-object v2, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/xutils/commons/time/StopWatch$State;->STOPPED:Lcn/xutils/commons/time/StopWatch$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lcn/xutils/commons/time/StopWatch$State$1;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/time/StopWatch$State$1;-><init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State$1-IA;)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$State;->RUNNING:Lcn/xutils/commons/time/StopWatch$State;

    .line 89
    new-instance v0, Lcn/xutils/commons/time/StopWatch$State$2;

    const-string v1, "STOPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/time/StopWatch$State$2;-><init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State$2-IA;)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$State;->STOPPED:Lcn/xutils/commons/time/StopWatch$State;

    .line 103
    new-instance v0, Lcn/xutils/commons/time/StopWatch$State$3;

    const-string v1, "SUSPENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/time/StopWatch$State$3;-><init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State$3-IA;)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$State;->SUSPENDED:Lcn/xutils/commons/time/StopWatch$State;

    .line 117
    new-instance v0, Lcn/xutils/commons/time/StopWatch$State$4;

    const-string v1, "UNSTARTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/time/StopWatch$State$4;-><init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State$4-IA;)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$State;->UNSTARTED:Lcn/xutils/commons/time/StopWatch$State;

    .line 73
    invoke-static {}, Lcn/xutils/commons/time/StopWatch$State;->$values()[Lcn/xutils/commons/time/StopWatch$State;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/StopWatch$State;->$VALUES:[Lcn/xutils/commons/time/StopWatch$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/xutils/commons/time/StopWatch$State-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/time/StopWatch$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/time/StopWatch$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Lcn/xutils/commons/time/StopWatch$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/StopWatch$State;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/time/StopWatch$State;
    .locals 1

    .line 73
    sget-object v0, Lcn/xutils/commons/time/StopWatch$State;->$VALUES:[Lcn/xutils/commons/time/StopWatch$State;

    invoke-virtual {v0}, [Lcn/xutils/commons/time/StopWatch$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/time/StopWatch$State;

    return-object v0
.end method


# virtual methods
.method abstract isStarted()Z
.end method

.method abstract isStopped()Z
.end method

.method abstract isSuspended()Z
.end method
