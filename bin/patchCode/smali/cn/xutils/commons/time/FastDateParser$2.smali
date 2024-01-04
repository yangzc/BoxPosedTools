.class Lcn/xutils/commons/time/FastDateParser$2;
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

    .line 1036
    invoke-direct {p0, p1}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method modify(Lcn/xutils/commons/time/FastDateParser;I)I
    .locals 1
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "iValue"    # I

    .line 1039
    add-int/lit8 v0, p2, -0x1

    return v0
.end method
