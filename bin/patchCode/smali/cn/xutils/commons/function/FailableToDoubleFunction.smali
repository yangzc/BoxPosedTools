.class public interface abstract Lcn/xutils/commons/function/FailableToDoubleFunction;
.super Ljava/lang/Object;
.source "FailableToDoubleFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field public static final NOP:Lcn/xutils/commons/function/FailableToDoubleFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableToDoubleFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableToDoubleFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableToDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableToDoubleFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)D
    .locals 2
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableToDoubleFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableToDoubleFunction<",
            "TT;TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/xutils/commons/function/FailableToDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableToDoubleFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsDouble(Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
