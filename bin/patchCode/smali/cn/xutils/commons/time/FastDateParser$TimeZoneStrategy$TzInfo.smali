.class Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TzInfo"
.end annotation


# instance fields
.field final dstOffset:I

.field final zone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Z)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "useDst"    # Z

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    .line 897
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcn/xutils/commons/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    .line 898
    return-void
.end method
