.class public abstract enum Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
.super Ljava/lang/Enum;
.source "AbstractCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

.field public static final enum CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

.field public static final enum OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    .locals 3

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    const/4 v1, 0x0

    sget-object v2, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 145
    new-instance v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$1;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$1;-><init>(Ljava/lang/String;ILcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$1-IA;)V

    sput-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 156
    new-instance v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2;-><init>(Ljava/lang/String;ILcn/xutils/commons/concurrent/AbstractCircuitBreaker$State$2-IA;)V

    sput-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 142
    invoke-static {}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->$values()[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcn/xutils/commons/concurrent/AbstractCircuitBreaker$State-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 142
    const-class v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    .locals 1

    .line 142
    sget-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->$VALUES:[Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {v0}, [Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    return-object v0
.end method


# virtual methods
.method public abstract oppositeState()Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
.end method
