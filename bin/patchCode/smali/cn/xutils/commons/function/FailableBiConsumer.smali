.class public interface abstract Lcn/xutils/commons/function/FailableBiConsumer;
.super Ljava/lang/Object;
.source "FailableBiConsumer.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableBiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableBiConsumer;->NOP:Lcn/xutils/commons/function/FailableBiConsumer;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lcn/xutils/commons/function/FailableBiConsumer;Lcn/xutils/commons/function/FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableBiConsumer;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableBiConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    .local p0, "this":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<TT;TU;TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    invoke-interface {p1, p2, p3}, Lcn/xutils/commons/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public static nop()Lcn/xutils/commons/function/FailableBiConsumer;
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
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcn/xutils/commons/function/FailableBiConsumer;->NOP:Lcn/xutils/commons/function/FailableBiConsumer;

    return-object v0
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public andThen(Lcn/xutils/commons/function/FailableBiConsumer;)Lcn/xutils/commons/function/FailableBiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "-TT;-TU;TE;>;)",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "TT;TU;TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<TT;TU;TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<-TT;-TU;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableBiConsumer$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableBiConsumer;Lcn/xutils/commons/function/FailableBiConsumer;)V

    return-object v0
.end method
