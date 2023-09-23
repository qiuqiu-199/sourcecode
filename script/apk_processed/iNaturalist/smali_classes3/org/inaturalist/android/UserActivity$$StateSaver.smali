.class public Lorg/inaturalist/android/UserActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "UserActivity$$StateSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/inaturalist/android/UserActivity;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "org.inaturalist.android.UserActivity$$StateSaver"

    sget-object v2, Lorg/inaturalist/android/UserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sput-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 46
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mActivities"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mFollowingActivities"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    const-string v1, "mNews"

    new-instance v2, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;

    invoke-direct {v2}, Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/UserActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UserActivity$$StateSaver;->restore(Lorg/inaturalist/android/UserActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/inaturalist/android/UserActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mViewType"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActivities"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    .line 65
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFollowingActivities"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    .line 66
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mNews"

    invoke-virtual {v0, p2, v1}, Lcom/evernote/android/state/InjectionHelper;->getWithBundler(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/inaturalist/android/UserActivity;

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/UserActivity$$StateSaver;->save(Lorg/inaturalist/android/UserActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/inaturalist/android/UserActivity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mViewType"

    iget-object v2, p1, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mActivities"

    iget-object v2, p1, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mFollowingActivities"

    iget-object v2, p1, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lorg/inaturalist/android/UserActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    const-string v1, "mNews"

    iget-object p1, p1, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v1, p1}, Lcom/evernote/android/state/InjectionHelper;->putWithBundler(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
