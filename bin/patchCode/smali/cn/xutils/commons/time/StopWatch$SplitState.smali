.class final enum Lcn/xutils/commons/time/StopWatch$SplitState;
.super Ljava/lang/Enum;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/StopWatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SplitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/time/StopWatch$SplitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/time/StopWatch$SplitState;

.field public static final enum SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

.field public static final enum UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/time/StopWatch$SplitState;
    .locals 2

    .line 65
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    sget-object v1, Lcn/xutils/commons/time/StopWatch$SplitState;->UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    filled-new-array {v0, v1}, [Lcn/xutils/commons/time/StopWatch$SplitState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Lcn/xutils/commons/time/StopWatch$SplitState;

    const-string v1, "SPLIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->SPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 67
    new-instance v0, Lcn/xutils/commons/time/StopWatch$SplitState;

    const-string v1, "UNSPLIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/time/StopWatch$SplitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->UNSPLIT:Lcn/xutils/commons/time/StopWatch$SplitState;

    .line 65
    invoke-static {}, Lcn/xutils/commons/time/StopWatch$SplitState;->$values()[Lcn/xutils/commons/time/StopWatch$SplitState;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->$VALUES:[Lcn/xutils/commons/time/StopWatch$SplitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/time/StopWatch$SplitState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Lcn/xutils/commons/time/StopWatch$SplitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/StopWatch$SplitState;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/time/StopWatch$SplitState;
    .locals 1

    .line 65
    sget-object v0, Lcn/xutils/commons/time/StopWatch$SplitState;->$VALUES:[Lcn/xutils/commons/time/StopWatch$SplitState;

    invoke-virtual {v0}, [Lcn/xutils/commons/time/StopWatch$SplitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/time/StopWatch$SplitState;

    return-object v0
.end method
