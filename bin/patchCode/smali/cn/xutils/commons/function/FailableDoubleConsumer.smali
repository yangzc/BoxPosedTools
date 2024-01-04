.class public interface abstract Lcn/xutils/commons/function/FailableDoubleConsumer;
.super Ljava/lang/Object;
.source "FailableDoubleConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lcn/xutils/commons/function/FailableDoubleConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableDoubleConsumer;->NOP:Lcn/xutils/commons/function/FailableDoubleConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lcn/xutils/commons/function/FailableDoubleConsumer;Lcn/xutils/commons/function/FailableDoubleConsumer;D)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableDoubleConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableDoubleConsumer;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleConsumer;, "Lcn/xutils/commons/function/FailableDoubleConsumer<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableDoubleConsumer;->accept(D)V

    .line 66
    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableDoubleConsumer;->accept(D)V

    .line 67
    return-void
.end method

.method public static synthetic lambda$static$0(D)V
    .locals 0
    .param p0, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/FailableDoubleConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableDoubleConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcn/xutils/commons/function/FailableDoubleConsumer;->NOP:Lcn/xutils/commons/function/FailableDoubleConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lcn/xutils/commons/function/FailableDoubleConsumer;)Lcn/xutils/commons/function/FailableDoubleConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableDoubleConsumer<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableDoubleConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcn/xutils/commons/function/FailableDoubleConsumer;, "Lcn/xutils/commons/function/FailableDoubleConsumer<TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableDoubleConsumer;, "Lcn/xutils/commons/function/FailableDoubleConsumer<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableDoubleConsumer$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableDoubleConsumer;Lcn/xutils/commons/function/FailableDoubleConsumer;)V

    return-object v0
.end method
