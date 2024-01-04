.class Lcn/xutils/commons/time/FastDateParser$StrategyParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrategyParser"
.end annotation


# instance fields
.field private currentIdx:I

.field private final definingCalendar:Ljava/util/Calendar;

.field final synthetic this$0:Lcn/xutils/commons/time/FastDateParser;


# direct methods
.method constructor <init>(Lcn/xutils/commons/time/FastDateParser;Ljava/util/Calendar;)V
    .locals 0
    .param p2, "definingCalendar"    # Ljava/util/Calendar;

    .line 223
    iput-object p1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    .line 225
    return-void
.end method

.method private letterPattern(C)Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    .locals 5
    .param p1, "c"    # C

    .line 240
    iget v0, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 241
    .local v0, "begin":I
    :cond_0
    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v2}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 242
    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v1}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p1, :cond_0

    .line 243
    nop

    .line 247
    :cond_1
    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    sub-int/2addr v1, v0

    .line 248
    .local v1, "width":I
    new-instance v2, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    iget-object v3, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    iget-object v4, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->definingCalendar:Ljava/util/Calendar;

    invoke-static {v3, p1, v1, v4}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$mgetStrategy(Lcn/xutils/commons/time/FastDateParser;CILjava/util/Calendar;)Lcn/xutils/commons/time/FastDateParser$Strategy;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;-><init>(Lcn/xutils/commons/time/FastDateParser$Strategy;I)V

    return-object v2
.end method

.method private literal()Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    .locals 7

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "activeQuote":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v3, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v3}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 256
    iget-object v2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v2}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 257
    .local v2, "c":C
    if-nez v0, :cond_0

    invoke-static {v2}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$smisFormatLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    goto :goto_2

    .line 260
    :cond_0
    const/16 v3, 0x27

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    iget v5, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/2addr v5, v4

    iput v5, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v6, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v6}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v5}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_3

    .line 261
    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 262
    goto :goto_0

    .line 264
    :cond_3
    iget v3, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    add-int/2addr v3, v4

    iput v3, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .end local v2    # "c":C
    goto :goto_0

    .line 268
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "formatField":Ljava/lang/String;
    new-instance v3, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    new-instance v4, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v4, v2}, Lcn/xutils/commons/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;-><init>(Lcn/xutils/commons/time/FastDateParser$Strategy;I)V

    return-object v3

    .line 269
    .end local v2    # "formatField":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unterminated quote"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method getNextStrategy()Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
    .locals 2

    .line 228
    iget v0, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v1}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->this$0:Lcn/xutils/commons/time/FastDateParser;

    invoke-static {v0}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$fgetpattern(Lcn/xutils/commons/time/FastDateParser;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->currentIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 233
    .local v0, "c":C
    invoke-static {v0}, Lcn/xutils/commons/time/FastDateParser;->-$$Nest$smisFormatLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->letterPattern(C)Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    move-result-object v1

    return-object v1

    .line 236
    :cond_1
    invoke-direct {p0}, Lcn/xutils/commons/time/FastDateParser$StrategyParser;->literal()Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    move-result-object v1

    return-object v1
.end method
