.class public interface abstract Lcn/xutils/commons/function/FailableToDoubleBiFunction;
.super Ljava/lang/Object;
.source "FailableToDoubleBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableToDoubleBiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcn/xutils/commons/function/FailableToDoubleBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableToDoubleBiFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableToDoubleBiFunction;->NOP:Lcn/xutils/commons/function/FailableToDoubleBiFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)D
    .locals 2
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableToDoubleBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableToDoubleBiFunction<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lcn/xutils/commons/function/FailableToDoubleBiFunction;->NOP:Lcn/xutils/commons/function/FailableToDoubleBiFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
