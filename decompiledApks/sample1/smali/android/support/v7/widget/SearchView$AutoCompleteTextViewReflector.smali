.class Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;

.field private showSoftInputUnchecked:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 10

    .prologue
    .line 1753
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1755
    move-object v2, v0

    :try_start_0
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string v4, "doBeforeTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 1757
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    :goto_0
    move-object v2, v0

    :try_start_1
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string v4, "doAfterTextChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 1764
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1769
    :goto_1
    move-object v2, v0

    :try_start_2
    const-class v3, Landroid/widget/AutoCompleteTextView;

    const-string v4, "ensureImeVisible"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 1771
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1776
    :goto_2
    move-object v2, v0

    :try_start_3
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    const-string v4, "showSoftInputUnchecked"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-class v8, Landroid/os/ResultReceiver;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    .line 1778
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1782
    :goto_3
    return-void

    .line 1758
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 1765
    :catch_1
    move-exception v2

    move-object v1, v2

    goto :goto_1

    .line 1772
    :catch_2
    move-exception v2

    move-object v1, v2

    goto :goto_2

    .line 1779
    :catch_3
    move-exception v2

    move-object v1, v2

    goto :goto_3
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 6

    .prologue
    .line 1794
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1796
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 6

    .prologue
    .line 1785
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1787
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1791
    :cond_0
    :goto_0
    return-void

    .line 1788
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 11

    .prologue
    .line 1803
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 1805
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1806
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method showSoftInputUnchecked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 1812
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    .line 1814
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->showSoftInputUnchecked:Ljava/lang/reflect/Method;

    move-object v6, v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1822
    :goto_0
    return-void

    .line 1816
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1821
    :cond_0
    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    .line 1822
    goto :goto_0
.end method
