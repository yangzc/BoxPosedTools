.class public interface abstract Lcn/xutils/commons/function/FailableLongUnaryOperator;
.super Ljava/lang/Object;
.source "FailableLongUnaryOperator.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableLongUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    return-void
.end method

.method public static identity()Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;J)J
    .locals 2
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .param p2, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcn/xutils/commons/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$compose$3(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;J)J
    .locals 2
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .param p1, "before"    # Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .param p2, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    .local p0, "this":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lcn/xutils/commons/function/FailableLongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$identity$1(J)J
    .locals 0
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    return-wide p0
.end method

.method public static synthetic lambda$static$0(J)J
    .locals 2
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcn/xutils/commons/function/FailableLongUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableLongUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lcn/xutils/commons/function/FailableLongUnaryOperator;)Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsLong(J)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lcn/xutils/commons/function/FailableLongUnaryOperator;)Lcn/xutils/commons/function/FailableLongUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableLongUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    .local p1, "before":Lcn/xutils/commons/function/FailableLongUnaryOperator;, "Lcn/xutils/commons/function/FailableLongUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableLongUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/function/FailableLongUnaryOperator;Lcn/xutils/commons/function/FailableLongUnaryOperator;)V

    return-object v0
.end method
