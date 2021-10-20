.class Landroid/support/v7/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 4

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 10

    .prologue
    .line 394
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    move v3, v5

    .line 395
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/app/AppCompatDelegateImplV7$2;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    move v6, v3

    invoke-static {v5, v6}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$300(Landroid/support/v7/app/AppCompatDelegateImplV7;I)I

    move-result v5

    move v4, v5

    .line 397
    move v5, v3

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 398
    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v6

    move v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v5

    move-object v2, v5

    .line 406
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
