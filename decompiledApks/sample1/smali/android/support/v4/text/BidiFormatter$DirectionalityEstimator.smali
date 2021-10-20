.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 508
    const/16 v1, 0x700

    new-array v1, v1, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 509
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    .line 510
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    move v3, v0

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v3

    aput-byte v3, v1, v2

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 553
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 554
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 555
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 556
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 3

    .prologue
    .line 727
    move v0, p0

    move v1, v0

    const/16 v2, 0x700

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    move v2, v0

    aget-byte v1, v1, v2

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    goto :goto_0
.end method

.method private skipEntityBackward()B
    .locals 9

    .prologue
    .line 868
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v2

    .line 869
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    .line 870
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v7, v4

    move v8, v5

    move v4, v8

    move-object v5, v7

    move v6, v8

    iput v6, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 872
    const/16 v2, 0xc

    move v0, v2

    .line 880
    :goto_0
    return v0

    .line 874
    :cond_1
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 878
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 879
    move-object v2, v0

    const/16 v3, 0x3b

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 880
    const/16 v2, 0xd

    move v0, v2

    goto :goto_0
.end method

.method private skipEntityForward()B
    .locals 9

    .prologue
    .line 853
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object v7, v1

    move v8, v2

    move v1, v8

    move-object v2, v7

    move v3, v8

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    const/16 v1, 0xc

    move v0, v1

    return v0
.end method

.method private skipTagBackward()B
    .locals 10

    .prologue
    .line 825
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 826
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_2

    .line 827
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 828
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 830
    const/16 v3, 0xc

    move v0, v3

    .line 844
    :goto_1
    return v0

    .line 832
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_3

    .line 842
    :cond_2
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 843
    move-object v3, v0

    const/16 v4, 0x3e

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 844
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1

    .line 835
    :cond_3
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 837
    :cond_4
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 838
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-char v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_5

    goto :goto_2

    .line 839
    :cond_5
    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 11

    .prologue
    .line 796
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v1, v3

    .line 797
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_4

    .line 798
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 799
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 801
    const/16 v3, 0xc

    move v0, v3

    .line 812
    :goto_1
    return v0

    .line 803
    :cond_1
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x22

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    .line 805
    :cond_2
    move-object v3, v0

    iget-char v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v2, v3

    .line 806
    :goto_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object v9, v3

    move v10, v4

    move v3, v10

    move-object v4, v9

    move v5, v10

    iput-char v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    move v4, v2

    if-eq v3, v4, :cond_3

    goto :goto_2

    .line 807
    :cond_3
    goto :goto_0

    .line 810
    :cond_4
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 811
    move-object v3, v0

    const/16 v4, 0x3c

    iput-char v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 812
    const/16 v3, 0xd

    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 7

    .prologue
    .line 770
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 771
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 772
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 773
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 786
    :goto_0
    return v0

    .line 776
    :cond_0
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 777
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 778
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 780
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    .line 781
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v2

    move v1, v2

    .line 786
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 782
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 783
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method dirTypeForward()B
    .locals 6

    .prologue
    .line 740
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 741
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    .line 743
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move v4, v1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    move v2, v1

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    move v0, v2

    .line 756
    :goto_0
    return v0

    .line 746
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 747
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v2

    move v1, v2

    .line 748
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    .line 750
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    .line 751
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v2

    move v1, v2

    .line 756
    :cond_1
    :goto_1
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 752
    :cond_2
    move-object v2, v0

    iget-char v2, v2, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    .line 753
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v2

    move v1, v2

    goto :goto_1
.end method

.method getEntryDir()I
    .locals 6

    .prologue
    .line 570
    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 571
    const/4 v4, 0x0

    move v1, v4

    .line 572
    const/4 v4, 0x0

    move v2, v4

    .line 573
    const/4 v4, 0x0

    move v3, v4

    .line 574
    :goto_0
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v4, v5, :cond_2

    move v4, v3

    if-nez v4, :cond_2

    .line 575
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 609
    :pswitch_0
    move v4, v1

    move v3, v4

    .line 610
    goto :goto_0

    .line 578
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 579
    const/4 v4, -0x1

    move v2, v4

    .line 580
    goto :goto_0

    .line 583
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 584
    const/4 v4, 0x1

    move v2, v4

    .line 585
    goto :goto_0

    .line 587
    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    .line 591
    const/4 v4, 0x0

    move v2, v4

    .line 592
    goto :goto_0

    .line 594
    :pswitch_4
    goto :goto_0

    .line 596
    :pswitch_5
    move v4, v1

    if-nez v4, :cond_0

    .line 597
    const/4 v4, -0x1

    move v0, v4

    .line 652
    :goto_1
    return v0

    .line 599
    :cond_0
    move v4, v1

    move v3, v4

    .line 600
    goto :goto_0

    .line 603
    :pswitch_6
    move v4, v1

    if-nez v4, :cond_1

    .line 604
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 606
    :cond_1
    move v4, v1

    move v3, v4

    .line 607
    goto :goto_0

    .line 616
    :cond_2
    move v4, v3

    if-nez v4, :cond_3

    .line 619
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 623
    :cond_3
    move v4, v2

    if-eqz v4, :cond_4

    .line 625
    move v4, v2

    move v0, v4

    goto :goto_1

    .line 630
    :cond_4
    :goto_2
    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v4, :cond_7

    .line 631
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 648
    :goto_3
    goto :goto_2

    .line 634
    :pswitch_7
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_5

    .line 635
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    .line 637
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 638
    goto :goto_3

    .line 641
    :pswitch_8
    move v4, v3

    move v5, v1

    if-ne v4, v5, :cond_6

    .line 642
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 644
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 645
    goto :goto_3

    .line 647
    :pswitch_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 652
    :cond_7
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 5

    .prologue
    .line 668
    move-object v0, p0

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v4, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 669
    const/4 v3, 0x0

    move v1, v3

    .line 670
    const/4 v3, 0x0

    move v2, v3

    .line 671
    :cond_0
    :goto_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_5

    .line 672
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 710
    :pswitch_0
    move v3, v2

    if-nez v3, :cond_0

    .line 711
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 674
    :pswitch_1
    move v3, v1

    if-nez v3, :cond_1

    .line 675
    const/4 v3, -0x1

    move v0, v3

    .line 716
    :goto_1
    return v0

    .line 677
    :cond_1
    move v3, v2

    if-nez v3, :cond_0

    .line 678
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 683
    :pswitch_2
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_2

    .line 684
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    .line 686
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 687
    goto :goto_0

    .line 690
    :pswitch_3
    move v3, v1

    if-nez v3, :cond_3

    .line 691
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 693
    :cond_3
    move v3, v2

    if-nez v3, :cond_0

    .line 694
    move v3, v1

    move v2, v3

    goto :goto_0

    .line 699
    :pswitch_4
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_4

    .line 700
    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    .line 702
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 703
    goto :goto_0

    .line 705
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 706
    goto :goto_0

    .line 708
    :pswitch_6
    goto :goto_0

    .line 716
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
