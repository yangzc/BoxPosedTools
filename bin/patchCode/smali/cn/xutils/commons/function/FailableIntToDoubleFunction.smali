.class public interface abstract Lcn/xutils/commons/function/FailableIntToDoubleFunction;
.super Ljava/lang/Object;
.source "FailableIntToDoubleFunction.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableIntToDoubleFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/xutils/commons/function/FailableIntToDoubleFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableIntToDoubleFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableIntToDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableIntToDoubleFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(I)D
    .locals 2
    .param p0, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableIntToDoubleFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableIntToDoubleFunction<",
            "TE;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcn/xutils/commons/function/FailableIntToDoubleFunction;->NOP:Lcn/xutils/commons/function/FailableIntToDoubleFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsDouble(I)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
