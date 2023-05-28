.class public abstract Lcom/google/firebase/auth/FirebaseUser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzVJ()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVF()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDisplayName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getEmail()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getPhotoUrl()Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getProviderData()Ljava/util/List;
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
.end method

.method public abstract getProviderId()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getProviders()Ljava/util/List;
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
.end method

.method public getToken(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public abstract getUid()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isAnonymous()Z
.end method

.method public linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public reauthenticate(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public reload()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public sendEmailVerification()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/FirebaseUser$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/auth/FirebaseUser$1;-><init>(Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public unlink(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateEmail(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updatePassword(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateProfile(Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzVJ()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzU(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
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
.end method

.method public abstract zzVF()Lcom/google/firebase/FirebaseApp;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzVG()Lcom/google/android/gms/internal/zzbmn;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzVH()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract zzVI()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbmn;)V
    .param p1    # Lcom/google/android/gms/internal/zzbmn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract zzaY(Z)Lcom/google/firebase/auth/FirebaseUser;
.end method
