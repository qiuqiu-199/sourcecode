.class public Lcom/google/android/gms/internal/zzbnb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/ActionCodeResult;


# instance fields
.field private final zzaka:Ljava/lang/String;

.field private final zzbYQ:Ljava/lang/String;

.field private final zzbkP:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbmt;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzbmt;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->getEmail()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzaka:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbYQ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PASSWORD_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VERIFY_EMAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RECOVER_EMAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    :goto_3
    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnb;->zzbYQ:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbnb;->zzaka:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    return v0
.end method
