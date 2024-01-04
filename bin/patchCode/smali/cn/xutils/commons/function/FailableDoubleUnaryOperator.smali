.class public interface abstract Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
.super Ljava/lang/Object;
.source "FailableDoubleUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    return-void
.end method

.method public static identity()Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$compose$3(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;D)D
    .locals 2
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .param p1, "before"    # Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .param p2, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$identity$1(D)D
    .locals 0
    .param p0, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    return-wide p0
.end method

.method public static synthetic lambda$static$0(D)D
    .locals 2
    .param p0, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableDoubleUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;)Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda3;-><init>(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsDouble(D)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;)Lcn/xutils/commons/function/FailableDoubleUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    .local p1, "before":Lcn/xutils/commons/function/FailableDoubleUnaryOperator;, "Lcn/xutils/commons/function/FailableDoubleUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/function/FailableDoubleUnaryOperator;Lcn/xutils/commons/function/FailableDoubleUnaryOperator;)V

    return-object v0
.end method
