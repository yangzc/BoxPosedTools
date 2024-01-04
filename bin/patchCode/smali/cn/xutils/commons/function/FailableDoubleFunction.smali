.class public interface abstract Lcn/xutils/commons/function/FailableDoubleFunction;
.super Ljava/lang/Object;
.source "FailableDoubleFunction.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableDoubleFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableDoubleFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableDoubleFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableDoubleFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(D)Ljava/lang/Object;
    .locals 1
    .param p0, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableDoubleFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableDoubleFunction<",
            "TR;TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/xutils/commons/function/FailableDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableDoubleFunction;

    return-object v0
.end method


# virtual methods
.method public abstract apply(D)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
