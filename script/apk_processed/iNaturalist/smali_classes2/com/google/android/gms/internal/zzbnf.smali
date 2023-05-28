.class public Lcom/google/android/gms/internal/zzbnf;
.super Lcom/google/firebase/auth/FirebaseUser;


# instance fields
.field private zzbYS:Lcom/google/android/gms/internal/zzbmn;

.field private zzbYT:Lcom/google/android/gms/internal/zzbnd;

.field private zzbYU:Ljava/lang/String;

.field private zzbYV:Ljava/lang/String;

.field private zzbYW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbnd;",
            ">;"
        }
    .end annotation
.end field

.field private zzbYX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzbYY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbnd;",
            ">;"
        }
    .end annotation
.end field

.field private zzbYZ:Ljava/lang/String;

.field private zzbYe:Lcom/google/android/gms/internal/zzbuk;

.field private zzbZa:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYU:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzblx;->zzVQ()Lcom/google/android/gms/internal/zzbuk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYV:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYZ:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbnf;->zzU(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYW:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYX:Ljava/util/List;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbZa:Z

    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbnd;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public zzU(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYW:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYX:Ljava/util/List;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYY:Ljava/util/Map;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/zzbnd;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYX:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYW:Ljava/util/List;

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/zzbnd;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYY:Ljava/util/Map;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYW:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbnd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYT:Lcom/google/android/gms/internal/zzbnd;

    :cond_2
    return-object p0
.end method

.method public zzVF()Lcom/google/firebase/FirebaseApp;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYU:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public zzVG()Lcom/google/android/gms/internal/zzbmn;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYS:Lcom/google/android/gms/internal/zzbmn;

    return-object v0
.end method

.method public zzVH()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYS:Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zzaL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzVI()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbnf;->zzVG()Lcom/google/android/gms/internal/zzbmn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmn;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWq()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzbnd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYW:Ljava/util/List;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbmn;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzbmn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbmn;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYS:Lcom/google/android/gms/internal/zzbmn;

    return-void
.end method

.method public synthetic zzaY(Z)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbnf;->zzaZ(Z)Lcom/google/android/gms/internal/zzbnf;

    move-result-object p1

    return-object p1
.end method

.method public zzaZ(Z)Lcom/google/android/gms/internal/zzbnf;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbZa:Z

    return-object p0
.end method

.method public zziz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbnf;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnf;->zzbYZ:Ljava/lang/String;

    return-object p0
.end method
