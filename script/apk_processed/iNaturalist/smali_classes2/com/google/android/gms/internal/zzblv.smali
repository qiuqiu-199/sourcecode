.class public final Lcom/google/android/gms/internal/zzblv;
.super Ljava/lang/Object;


# static fields
.field static final zzbYd:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_CUSTOM_TOKEN"

    const-string v3, "The custom token format is incorrect. Please check the documentation."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4268

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CUSTOM_TOKEN_MISMATCH"

    const-string v3, "The custom token corresponds to a different audience."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_CREDENTIAL"

    const-string v3, "The supplied auth credential is malformed or has expired."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_EMAIL"

    const-string v3, "The email address is badly formatted."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4270

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WRONG_PASSWORD"

    const-string v3, "The password is invalid or the user does not have a password."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4271

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_MISMATCH"

    const-string v3, "The supplied credentials do not correspond to the previously signed in user."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4280

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_REQUIRES_RECENT_LOGIN"

    const-string v3, "This operation is sensitive and requires recent authentication. Log in again before retrying this request."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4276

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL"

    const-string v3, "An account already exists with the same email address but different sign-in credentials. Sign in using a provider associated with this email address."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4274

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_EMAIL_ALREADY_IN_USE"

    const-string v3, "The email address is already in use by another account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_CREDENTIAL_ALREADY_IN_USE"

    const-string v3, "This credential is already associated with a different user account."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4281

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_DISABLED"

    const-string v3, "The user account has been disabled by an administrator."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_TOKEN_EXPIRED"

    const-string v3, "The user\'s credential is no longer valid. The user must sign in again."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x427d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_USER_NOT_FOUND"

    const-string v3, "There is no user record corresponding to this identifier. The user may have been deleted."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4273

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_INVALID_USER_TOKEN"

    const-string v3, "The user\'s credential is no longer valid. The user must sign in again."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4279

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_OPERATION_NOT_ALLOWED"

    const-string v3, "This operation is not allowed. You must enable this service in the console."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x426e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ERROR_WEAK_PASSWORD"

    const-string v3, "The given password is invalid."

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x4282

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " [ %s ]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static zzce(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqk(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzblv;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4268

    if-eq v0, v2, :cond_3

    const/16 v2, 0x426a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4457

    if-eq v0, v2, :cond_1

    const/16 v2, 0x445b

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    new-instance p0, Lcom/google/firebase/FirebaseException;

    const-string v0, "An internal error has occurred."

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;

    const-string v0, "ERROR_INVALID_ACTION_CODE"

    const-string v1, "The out of band code is invalid. This can happen if the code is malformed, expired, or has already been used."

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;

    const-string v0, "ERROR_EXPIRED_ACTION_CODE"

    const-string v1, "The out of band code has expired."

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthActionCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :pswitch_3
    new-instance p0, Lcom/google/firebase/FirebaseNetworkException;

    const-string v0, "A network error (such as timeout, interrupted connection or unreachable host) has occurred."

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseNetworkException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/google/firebase/FirebaseException;

    const-string v0, "User was not linked to an account with the given provider."

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/FirebaseException;

    const-string v0, "User has already been linked to the given provider."

    invoke-direct {p0, v0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_7
    const-string v0, "We have blocked all requests from this device due to unusual activity. Try again later."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzblv;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/FirebaseTooManyRequestsException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseTooManyRequestsException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidUserException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "An internal error has occurred."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzblv;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/firebase/FirebaseException;

    invoke-direct {v0, p0}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/zzbtk;

    const-string v0, "Please sign in before trying to get a token."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbtk;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    :pswitch_b
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzqj(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x426c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4276
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x427c
        :pswitch_3
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4280
        :pswitch_b
        :pswitch_8
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4285
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzqj(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "INTERNAL_ERROR"

    :goto_0
    return-object p0
.end method

.method private static zzqk(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzblv;->zzbYd:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "An internal error happened"

    :goto_0
    return-object p0
.end method
