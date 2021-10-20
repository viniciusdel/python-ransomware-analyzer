.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NavigationMenuSeparatorItem"
.end annotation


# instance fields
.field private final mPaddingBottom:I

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 619
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 620
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    .line 621
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    .line 622
    return-void
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 2

    .prologue
    .line 629
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingBottom:I

    move v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->mPaddingTop:I

    move v0, v1

    return v0
.end method
