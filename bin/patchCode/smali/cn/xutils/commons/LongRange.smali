.class public final Lcn/xutils/commons/LongRange;
.super Lcn/xutils/commons/NumberRange;
.source "LongRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/xutils/commons/NumberRange<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "number1"    # Ljava/lang/Long;
    .param p2, "number2"    # Ljava/lang/Long;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/NumberRange;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V

    .line 82
    return-void
.end method

.method public static of(JJ)Lcn/xutils/commons/LongRange;
    .locals 2
    .param p0, "fromInclusive"    # J
    .param p2, "toInclusive"    # J

    .line 49
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/LongRange;->of(Ljava/lang/Long;Ljava/lang/Long;)Lcn/xutils/commons/LongRange;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Long;Ljava/lang/Long;)Lcn/xutils/commons/LongRange;
    .locals 1
    .param p0, "fromInclusive"    # Ljava/lang/Long;
    .param p1, "toInclusive"    # Ljava/lang/Long;

    .line 69
    new-instance v0, Lcn/xutils/commons/LongRange;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/LongRange;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method
