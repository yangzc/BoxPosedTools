.class public interface abstract Lcn/xutils/commons/function/FailableBiFunction;
.super Ljava/lang/Object;
.source "FailableBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
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
.field public static final NOP:Lcn/xutils/commons/function/FailableBiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcn/xutils/commons/function/FailableBiFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableBiFunction$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableBiFunction;->NOP:Lcn/xutils/commons/function/FailableBiFunction;

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lcn/xutils/commons/function/FailableBiFunction;Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableBiFunction;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    .local p0, "this":Lcn/xutils/commons/function/FailableBiFunction;, "Lcn/xutils/commons/function/FailableBiFunction<TT;TU;TR;TE;>;"
    invoke-interface {p0, p2, p3}, Lcn/xutils/commons/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableBiFunction<",
            "TT;TU;TR;TE;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcn/xutils/commons/function/FailableBiFunction;->NOP:Lcn/xutils/commons/function/FailableBiFunction;

    return-object v0
.end method


# virtual methods
.method public andThen(Lcn/xutils/commons/function/FailableFunction;)Lcn/xutils/commons/function/FailableBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lcn/xutils/commons/function/FailableBiFunction<",
            "TT;TU;TV;TE;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcn/xutils/commons/function/FailableBiFunction;, "Lcn/xutils/commons/function/FailableBiFunction<TT;TU;TR;TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<-TR;+TV;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lcn/xutils/commons/function/FailableBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableBiFunction$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/function/FailableBiFunction;Lcn/xutils/commons/function/FailableFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
