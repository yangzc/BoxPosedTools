.class Lcn/xutils/commons/time/FastDateParser$1;
.super Lcn/xutils/commons/time/FastDateParser$NumberStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .line 871
    invoke-direct {p0, p1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lcn/xutils/commons/time/FastDateParser;I)I
    .locals 1
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "iValue"    # I

    .line 877
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    invoke-static {p1, p2}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$madjustYear(Lcn/xutils/commons/time/FastDateParser;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method
