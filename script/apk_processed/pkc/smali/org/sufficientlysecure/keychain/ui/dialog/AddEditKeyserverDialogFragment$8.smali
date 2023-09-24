.class synthetic Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;
.super Ljava/lang/Object;
.source "AddEditKeyserverDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 310
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->CONNECTION_FAILED:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->INVALID_URL:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->NO_PINNED_CERTIFICATE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :catch_2
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    :try_start_3
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;---><clinit>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
