.class public interface abstract Lcn/xutils/commons/function/FailableToIntFunction;
.super Ljava/lang/Object;
.source "FailableToIntFunction.java"


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
.field public static final NOP:Lcn/xutils/commons/function/FailableToIntFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcn/xutils/commons/function/FailableToIntFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/xutils/commons/function/FailableToIntFunction$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcn/xutils/commons/function/FailableToIntFunction;->NOP:Lcn/xutils/commons/function/FailableToIntFunction;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static nop()Lcn/xutils/commons/function/FailableToIntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lcn/xutils/commons/function/FailableToIntFunction<",
            "TT;TE;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/xutils/commons/function/FailableToIntFunction;->NOP:Lcn/xutils/commons/function/FailableToIntFunction;

    return-object v0
.end method


# virtual methods
.method public abstract applyAsInt(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
