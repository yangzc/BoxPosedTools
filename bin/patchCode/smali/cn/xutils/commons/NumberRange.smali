.class public Lcn/xutils/commons/NumberRange;
.super Lcn/xutils/commons/Range;
.source "NumberRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Number;",
        ">",
        "Lcn/xutils/commons/Range<",
        "TN;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Ljava/util/Comparator<",
            "TN;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcn/xutils/commons/NumberRange;, "Lcn/xutils/commons/NumberRange<TN;>;"
    .local p1, "number1":Ljava/lang/Number;, "TN;"
    .local p2, "number2":Ljava/lang/Number;, "TN;"
    .local p3, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lcn/xutils/commons/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 46
    return-void
.end method
