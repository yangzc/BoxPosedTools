.class Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;
.super Lcn/xutils/commons/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyQuotedStrategy"
.end annotation


# instance fields
.field private final formatField:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatField"    # Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$Strategy;-><init>(Lcn/xutils/commons/time/FastDateParser$Strategy-IA;)V

    .line 687
    iput-object p1, p0, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    .line 688
    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 5
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .line 701
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 702
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    .line 703
    .local v1, "sIdx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 704
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 705
    return v3

    .line 707
    :cond_0
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_1

    .line 708
    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 709
    return v3

    .line 701
    .end local v1    # "sIdx":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "idx":I
    :cond_2
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 713
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyQuotedStrategy [formatField="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;->formatField:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
