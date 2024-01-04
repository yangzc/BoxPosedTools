.class Lcn/xutils/commons/time/FastDateParser$NumberStrategy;
.super Lcn/xutils/commons/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberStrategy"
.end annotation


# instance fields
.field private final field:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "field"    # I

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$Strategy;-><init>(Lcn/xutils/commons/time/FastDateParser$Strategy-IA;)V

    .line 797
    iput p1, p0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;->field:I

    .line 798
    return-void
.end method


# virtual methods
.method isNumber()Z
    .locals 1

    .line 805
    const/4 v0, 0x1

    return v0
.end method

.method modify(Lcn/xutils/commons/time/FastDateParser;I)I
    .locals 0
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "iValue"    # I

    .line 857
    return p2
.end method

.method parse(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 5
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .line 811
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 812
    .local v0, "idx":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 814
    .local v1, "last":I
    if-nez p5, :cond_2

    .line 816
    :goto_0
    if-ge v0, v1, :cond_1

    .line 817
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 818
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 819
    goto :goto_1

    .line 816
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_1
    :goto_1
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 824
    :cond_2
    add-int v2, v0, p5

    .line 825
    .local v2, "end":I
    if-le v1, v2, :cond_3

    .line 826
    move v1, v2

    .line 830
    .end local v2    # "end":I
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_5

    .line 831
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 832
    .local v2, "c":C
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_4

    .line 833
    goto :goto_3

    .line 830
    .end local v2    # "c":C
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 837
    :cond_5
    :goto_3
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 838
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 839
    const/4 v2, 0x0

    return v2

    .line 842
    :cond_6
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 843
    .local v2, "value":I
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 845
    iget v3, p0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {p0, p1, v2}, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;->modify(Lcn/xutils/commons/time/FastDateParser;I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 846
    const/4 v3, 0x1

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberStrategy [field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$NumberStrategy;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
