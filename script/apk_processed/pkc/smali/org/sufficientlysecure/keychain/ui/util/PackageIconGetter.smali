.class public Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;
.super Ljava/lang/Object;
.source "PackageIconGetter.java"


# instance fields
.field private final appIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->appIconCache:Ljava/util/HashMap;

    .line 41
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->packageManager:Landroid/content/pm/PackageManager;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;---><init>(Landroid/content/pm/PackageManager;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;
    .locals 4

    move-object/16 v1, p0

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDrawableForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 45
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->appIconCache:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->appIconCache:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    return-object v3

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 52
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;->appIconCache:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v3, 0x0

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/PackageIconGetter;--->getDrawableForPackageName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
