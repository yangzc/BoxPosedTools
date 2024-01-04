.class public interface abstract Lcn/xutils/commons/function/FailableLongConsumer;
.super Ljava/lang/Object;
.source "FailableLongConsumer.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableLongConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongConsumer;->NOP:Lcn/xutils/commons/function/FailableLongConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lcn/xutils/commons/function/FailableLongConsumer;Lcn/xutils/commons/function/FailableLongConsumer;J)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableLongConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableLongConsumer;
    .param p2, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    .local p0, "this":Lcn/xutils/commons/function/FailableLongConsumer;, "Lcn/xutils/commons/function/FailableLongConsumer<TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableLongConsumer;->accept(J)V

    .line 66
    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableLongConsumer;->accept(J)V

    .line 67
    return-void
.end method

.method public static synthetic lambda$static$0(J)V
    .locals 0
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/FailableLongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcn/xutils/commons/function/FailableLongConsumer;->NOP:Lcn/xutils/commons/function/FailableLongConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lcn/xutils/commons/function/FailableLongConsumer;)Lcn/xutils/commons/function/FailableLongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableLongConsumer<",
            "TE;>;)",
            "Lcn/xutils/commons/function/FailableLongConsumer<",
            "TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcn/xutils/commons/function/FailableLongConsumer;, "Lcn/xutils/commons/function/FailableLongConsumer<TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableLongConsumer;, "Lcn/xutils/commons/function/FailableLongConsumer<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableLongConsumer$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/commons/function/FailableLongConsumer;Lcn/xutils/commons/function/FailableLongConsumer;)V

    return-object v0
.end method
