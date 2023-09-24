.class public Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;
.source "ApiAppsLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData<",
        "Ljava/util/List<",
        "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final PLACERHOLDER_APPS:[Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;


# instance fields
.field private final apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    new-instance v8, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    const-string v2, "com.fsck.k9"

    const-string v5, "K-9 Mail"

    const v1, 0x7f08005c

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    const-string v10, "com.zeapo.pwdstore"

    const-string v13, "Password Store"

    const v2, 0x7f08005d

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    const-string v4, "eu.siacs.conversations"

    const-string v7, "Conversations (Instant Messaging)"

    const v2, 0x7f08005b

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->PLACERHOLDER_APPS:[Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    return-void

    const-string v16, "M_InsDal"

    const-string v17, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;---><clinit>()V"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 26
    invoke-static {}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriAllApps()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 28
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->packageManager:Landroid/content/pm/PackageManager;

    .line 29
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private addPlaceholderApps(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;)V"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 62
    sget-object v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->PLACERHOLDER_APPS:[Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 63
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-direct {v7, v8, v5}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->containsByPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 65
    :try_start_0
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 66
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->withIsInstalled()Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;--->addPlaceholderApps(Ljava/util/ArrayList;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private containsByPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 75
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    .line 76
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;--->containsByPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$asyncLoadData$0$ApiAppsLiveData(Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;)I
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->readableName:Ljava/lang/String;

    iget-object p1, p1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->readableName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private loadRegisteredApps(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;)V"
        }
    .end annotation

    move-object/16 v19, p0

    move-object/16 v20, p1

    move-object/from16 v0, v19

    .line 44
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getAllApiApps()Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/ApiApp;

    .line 49
    :try_start_0
    iget-object v3, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 50
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 51
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 53
    new-instance v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    new-instance v3, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v18}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;-><init>(Ljava/lang/String;ZZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    :goto_1
    move-object/from16 v2, v20

    .line 57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    const-string v21, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;--->loadRegisteredApps(Ljava/util/ArrayList;)V"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic asyncLoadData()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->asyncLoadData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected asyncLoadData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->loadRegisteredApps(Ljava/util/ArrayList;)V

    .line 37
    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;->addPlaceholderApps(Ljava/util/ArrayList;)V

    .line 39
    sget-object v1, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$$Lambda$0;->$instance:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;--->asyncLoadData()Ljava/util/List;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
