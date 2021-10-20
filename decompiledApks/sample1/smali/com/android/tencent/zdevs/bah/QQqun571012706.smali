.class public Lcom/android/tencent/zdevs/bah/QQqun571012706;
.super Landroid/widget/ProgressBar;
.source "QQqun571012706.java"


# instance fields
.field mPaint:Landroid/graphics/Paint;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 20
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->initText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    move-object v4, v0

    invoke-direct {v4}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->initText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    move-object v5, v0

    invoke-direct {v5}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->initText()V

    return-void
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    new-instance v4, Landroid/util/DisplayMetrics;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v2, v4

    .line 106
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    move-object v4, v2

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move v0, v4

    return v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    new-instance v4, Landroid/util/DisplayMetrics;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v2, v4

    .line 94
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    move-object v4, v2

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move v0, v4

    return v0
.end method

.method private initText()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v5, v0

    new-instance v6, Landroid/graphics/Paint;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, v5, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    .line 61
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v2, v5

    .line 64
    move-object v5, v2

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move v3, v5

    .line 65
    move v5, v3

    const/16 v6, 0x1e0

    if-le v5, v6, :cond_0

    .line 67
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0x24

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0x12

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private setText()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->getProgress()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->setText(I)V

    return-void
.end method

.method private setText(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    move v1, p1

    move v5, v1

    const/16 v6, 0x64

    mul-int/lit8 v5, v5, 0x64

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->getMax()I

    move-result v6

    div-int/2addr v5, v6

    move v3, v5

    .line 83
    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/tencent/zdevs/bah/QQqun571012706;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p1

    move-object v12, p0

    monitor-enter v12

    move-object v7, v0

    move-object v8, v1

    :try_start_0
    invoke-super {v7, v8}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    new-instance v7, Landroid/graphics/Rect;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v7

    .line 52
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/tencent/zdevs/bah/QQqun571012706;->text:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/android/tencent/zdevs/bah/QQqun571012706;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 53
    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    move v4, v7

    .line 54
    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->getHeight()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 55
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/android/tencent/zdevs/bah/QQqun571012706;->text:Ljava/lang/String;

    move v9, v4

    int-to-float v9, v9

    move v10, v5

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lcom/android/tencent/zdevs/bah/QQqun571012706;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    move v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-direct {v3, v4}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->setText(I)V

    .line 42
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method
