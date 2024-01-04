.class public interface abstract Lcn/xutils/commons/function/FailableFunction;
.super Ljava/lang/Object;
.source "FailableFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field public static final NOP:Lcn/xutils/commons/function/FailableFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableFunction;->NOP:Lcn/xutils/commons/function/FailableFunction;

    return-void
.end method

.method public static identity()Lcn/xutils/commons/function/FailableFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TT;TT;TE;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableFunction;
    .param p1, "after"    # Lcn/xutils/commons/function/FailableFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    .local p0, "this":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;TE;>;"
    invoke-interface {p0, p2}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$3(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lcn/xutils/commons/function/FailableFunction;
    .param p1, "before"    # Lcn/xutils/commons/function/FailableFunction;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    .local p0, "this":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;TE;>;"
    invoke-interface {p1, p2}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcn/xutils/commons/function/FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$identity$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    return-object p0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TT;TR;TE;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lcn/xutils/commons/function/FailableFunction;->NOP:Lcn/xutils/commons/function/FailableFunction;

    return-object v0
.end method


# virtual methods
.method public andThen(Lcn/xutils/commons/function/FailableFunction;)Lcn/xutils/commons/function/FailableFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableFunction<",
            "-TR;+TV;TE;>;)",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TT;TV;TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;TE;>;"
    .local p1, "after":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<-TR;+TV;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda2;-><init>(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public compose(Lcn/xutils/commons/function/FailableFunction;)Lcn/xutils/commons/function/FailableFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/function/FailableFunction<",
            "-TV;+TT;TE;>;)",
            "Lcn/xutils/commons/function/FailableFunction<",
            "TV;TR;TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<TT;TR;TE;>;"
    .local p1, "before":Lcn/xutils/commons/function/FailableFunction;, "Lcn/xutils/commons/function/FailableFunction<-TV;+TT;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/function/FailableFunction$$ExternalSyntheticLambda1;-><init>(Lcn/xutils/commons/function/FailableFunction;Lcn/xutils/commons/function/FailableFunction;)V

    return-object v0
.end method
