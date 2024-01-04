.class Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;
.super Lcn/xutils/commons/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseInsensitiveTextStrategy"
.end annotation


# instance fields
.field private final field:I

.field private final lKeyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .locals 2
    .param p1, "field"    # I
    .param p2, "definingCalendar"    # Ljava/util/Calendar;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 742
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;-><init>(Lcn/xutils/commons/time/FastDateParser$PatternStrategy-IA;)V

    .line 743
    iput p1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    .line 744
    invoke-static {p3}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .local v0, "regex":Ljava/lang/StringBuilder;
    const-string v1, "((?iu)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-static {p2, p3, p1, v0}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$smappendDisplayNames(Ljava/util/Calendar;Ljava/util/Locale;ILjava/lang/StringBuilder;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    .line 749
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 750
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {p0, v0}, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 752
    return-void
.end method


# virtual methods
.method setCalendar(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 5
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "lowerCase":Ljava/lang/String;
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 761
    .local v1, "iVal":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 763
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 766
    :cond_0
    const/16 v2, 0x9

    iget v3, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 767
    :cond_1
    iget v2, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 769
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaseInsensitiveTextStrategy [field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lKeyValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->lKeyValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$CaseInsensitiveTextStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
