.class abstract Lcn/xutils/commons/time/FastDateParser$PatternStrategy;
.super Lcn/xutils/commons/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PatternStrategy"
.end annotation


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$Strategy;-><init>(Lcn/xutils/commons/time/FastDateParser$Strategy-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/time/FastDateParser$PatternStrategy-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method createPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/String;

    .line 545
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    .line 546
    return-void
.end method

.method createPattern(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "regex"    # Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;->createPattern(Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method isNumber()Z
    .locals 1

    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method parse(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 4
    .param p1, "parser"    # Lcn/xutils/commons/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "pos"    # Ljava/text/ParsePosition;
    .param p5, "maxWidth"    # I

    .line 561
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 562
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 564
    const/4 v1, 0x0

    return v1

    .line 566
    :cond_0
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p4, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 567
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;->setCalendar(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    .line 568
    return v2
.end method

.method abstract setCalendar(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$PatternStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
