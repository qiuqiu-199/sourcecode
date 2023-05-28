.class Lcom/livefront/bridge/BridgeDelegate;
.super Ljava/lang/Object;
.source "BridgeDelegate.java"


# static fields
.field private static final KEY_BUNDLE:Ljava/lang/String; = "bundle_%s"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid_%s"

.field private static final TAG:Ljava/lang/String; = "com.livefront.bridge.BridgeDelegate"


# instance fields
.field private mIsClearAllowed:Z

.field private mIsFirstRestoreCall:Z

.field private mObjectUuidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUuidBundleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/livefront/bridge/SavedStateHandler;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/livefront/bridge/SavedStateHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstRestoreCall:Z

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    .line 32
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    .line 38
    sget-object v1, Lcom/livefront/bridge/BridgeDelegate;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    iput-object p2, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    .line 40
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->registerForLifecycleEvents(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/livefront/bridge/BridgeDelegate;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    return p1
.end method

.method private clearDataForUuid(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->clearDataFromDisk(Ljava/lang/String;)V

    return-void
.end method

.method private clearDataFromDisk(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForEncodedBundle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getKeyForEncodedBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "bundle_%s"

    const/4 v1, 0x1

    .line 74
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "uuid_%s"

    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readFromDisk(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForEncodedBundle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 87
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 90
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    const-class p1, Lcom/livefront/bridge/BridgeDelegate;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method private registerForLifecycleEvents(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    new-instance v0, Lcom/livefront/bridge/BridgeDelegate$1;

    invoke-direct {v0, p0}, Lcom/livefront/bridge/BridgeDelegate$1;-><init>(Lcom/livefront/bridge/BridgeDelegate;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private writeToDisk(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 172
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 173
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForEncodedBundle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method


# virtual methods
.method clear(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    iget-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsClearAllowed:Z

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    return-void

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->clearDataForUuid(Ljava/lang/String;)V

    return-void
.end method

.method clearAll()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 57
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    iget-boolean v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstRestoreCall:Z

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mIsFirstRestoreCall:Z

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    .line 132
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    .line 139
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_1

    .line 140
    :cond_4
    invoke-direct {p0, p2}, Lcom/livefront/bridge/BridgeDelegate;->readFromDisk(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    return-void

    .line 144
    :cond_5
    invoke-static {v0}, Lcom/livefront/bridge/wrapper/WrapperUtils;->unwrapOptimizedObjects(Landroid/os/Bundle;)V

    .line 145
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    invoke-interface {v1, p1, v0}, Lcom/livefront/bridge/SavedStateHandler;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0, p2}, Lcom/livefront/bridge/BridgeDelegate;->clearDataForUuid(Ljava/lang/String;)V

    return-void
.end method

.method saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mObjectUuidMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lcom/livefront/bridge/BridgeDelegate;->getKeyForUuid(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/livefront/bridge/BridgeDelegate;->mSavedStateHandler:Lcom/livefront/bridge/SavedStateHandler;

    invoke-interface {v1, p1, p2}, Lcom/livefront/bridge/SavedStateHandler;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 162
    :cond_1
    invoke-static {p2}, Lcom/livefront/bridge/wrapper/WrapperUtils;->wrapOptimizedObjects(Landroid/os/Bundle;)V

    .line 163
    iget-object p1, p0, Lcom/livefront/bridge/BridgeDelegate;->mUuidBundleMap:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-direct {p0, v0, p2}, Lcom/livefront/bridge/BridgeDelegate;->writeToDisk(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
