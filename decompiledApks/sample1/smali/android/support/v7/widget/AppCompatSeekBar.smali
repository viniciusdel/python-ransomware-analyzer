.class public Landroid/support/v7/widget/AppCompatSeekBar;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

.field private mTintManager:Landroid/support/v7/widget/TintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroid/support/v7/appcompat/R$attr;->seekBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    move-object v4, v0

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatSeekBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 48
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/AppCompatSeekBarHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/AppCompatSeekBar;->mTintManager:Landroid/support/v7/widget/TintManager;

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/AppCompatSeekBarHelper;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/TintManager;)V

    iput-object v5, v4, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    .line 49
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatSeekBar;->mAppCompatSeekBarHelper:Landroid/support/v7/widget/AppCompatSeekBarHelper;

    move-object v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method
