.class public interface abstract Lcn/xutils/commons/function/FailableLongFunction;
.super Ljava/lang/Object;
.source "FailableLongFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
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
.field public static final NOP:Lcn/xutils/commons/function/FailableLongFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableLongFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableLongFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableLongFunction;->NOP:Lcn/xutils/commons/function/FailableLongFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(J)Ljava/lang/Object;
    .locals 1
    .param p0, "t"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableLongFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableLongFunction<",
            "TR;TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/xutils/commons/function/FailableLongFunction;->NOP:Lcn/xutils/commons/function/FailableLongFunction;

    return-object v0
.end method


# virtual methods
.method public abstract apply(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
