.class public Lcom/google/android/gms/internal/zzbnj;
.super Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzBd:Landroid/content/SharedPreferences;

.field private zzbYe:Lcom/google/android/gms/internal/zzbuk;

.field private zzbZb:Ljava/lang/String;

.field private zzbZc:Lcom/google/android/gms/internal/zzbuv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbuk;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzbuk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnj;->mContext:Landroid/content/Context;

    const-string p1, "com.google.firebase.auth.api.Store.%s"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZb:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbuk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    new-instance p2, Lcom/google/android/gms/internal/zzbuv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzbuv;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZc:Lcom/google/android/gms/internal/zzbuv;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbnj;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbut;)Lcom/google/android/gms/internal/zzbnf;
    .locals 10
    .param p1    # Lcom/google/android/gms/internal/zzbut;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "cachedTokenState"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "applicationName"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anonymous"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbuq;->getAsBoolean()Z

    move-result v2

    const-string v3, "2"

    const-string v4, "version"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "userInfos"

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/zzbut;->zzjS(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbun;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbun;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/zzbun;->zzqT(I)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v8

    const-class v9, Lcom/google/android/gms/internal/zzbnd;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbuq;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzbnd;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzbnf;

    invoke-direct {v1, p1, v5}, Lcom/google/android/gms/internal/zzbnf;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v4, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzbuk;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbnf;->zza(Lcom/google/android/gms/internal/zzbmn;)V

    :cond_2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbnf;->zzaY(Z)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbnf;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzbnf;->zziz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbnf;

    return-object v1
.end method

.method private zzi(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;
    .locals 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbut;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/zzbnf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzbnf;

    const-string v1, "cachedTokenState"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzVH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "applicationName"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzVF()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzWq()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzbun;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->zzWq()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbnd;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zzbuk;->zzaL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbnj;->zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzbun;->zzc(Lcom/google/android/gms/internal/zzbuq;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "userInfos"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    :cond_1
    const-string v1, "anonymous"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbnf;->isAnonymous()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "version"

    const-string v1, "2"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbut;->zzaG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbut;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zziA(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbuv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbuv;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbuv;->zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzWs()Lcom/google/firebase/auth/FirebaseUser;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbnj;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnj;->zzbZc:Lcom/google/android/gms/internal/zzbuv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbuv;->zzjT(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->zzado()Lcom/google/android/gms/internal/zzbut;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbut;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbut;->zzjR(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbuq;->zzadj()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbnj;->zza(Lcom/google/android/gms/internal/zzbut;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbuz; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    return-object v2
.end method

.method public zzWt()V
    .locals 1

    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbnj;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/zzbmn;)V
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzbmn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnj;->zzp(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzao(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbnj;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbuk;->zzf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zzf(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbnj;->zzi(Lcom/google/firebase/auth/FirebaseUser;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.firebase.auth.FIREBASE_USER"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzbnj;->zzao(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/zzbmn;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbnj;->zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbmn;

    return-object p1
.end method

.method public zzh(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbnj;->clear(Ljava/lang/String;)V

    return-void
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnj;->zzBd:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbnj;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzbuk;->zzaL(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
