.class public interface abstract Lcn/xutils/commons/function/FailableIntUnaryOperator;
.super Ljava/lang/Object;
.source "FailableIntUnaryOperator.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableIntUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableIntUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    return-void
.end method

.method public static identity()Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;I)I
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    invoke-interface {p0, p2}, Lcn/xutils/commons/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/xutils/commons/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$compose$3(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;I)I
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .param p1, "before"    # Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    .local p0, "this":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    invoke-interface {p1, p2}, Lcn/xutils/commons/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Lcn/xutils/commons/function/FailableIntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$identity$1(I)I
    .locals 0
    .param p0, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    return p0
.end method

.method public static synthetic lambda$static$0(I)I
    .locals 1
    .param p0, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcn/xutils/commons/function/FailableIntUnaryOperator;->NOP:Lcn/xutils/commons/function/FailableIntUnaryOperator;

    return-object v0
.end method


# virtual methods
.method public andThen(Lcn/xutils/commons/function/FailableIntUnaryOperator;)Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;)V

    return-object v0
.end method

.method public abstract applyAsInt(I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lcn/xutils/commons/function/FailableIntUnaryOperator;)Lcn/xutils/commons/function/FailableIntUnaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableIntUnaryOperator<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    .local p1, "before":Lcn/xutils/commons/function/FailableIntUnaryOperator;, "Lcn/xutils/commons/function/FailableIntUnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableIntUnaryOperator$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/function/FailableIntUnaryOperator;Lcn/xutils/commons/function/FailableIntUnaryOperator;)V

    return-object v0
.end method
