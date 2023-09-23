.class public final enum Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
.super Ljava/lang/Enum;
.source "AddEditKeyserverDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerifyReturn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

.field public static final enum CONNECTION_FAILED:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

.field public static final enum GOOD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

.field public static final enum INVALID_URL:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

.field public static final enum NO_PINNED_CERTIFICATE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const-string v1, "INVALID_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->INVALID_URL:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    .line 96
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const-string v1, "CONNECTION_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->CONNECTION_FAILED:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    .line 97
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const-string v1, "NO_PINNED_CERTIFICATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->NO_PINNED_CERTIFICATE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    .line 98
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const-string v1, "GOOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->GOOD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const/4 v0, 0x4

    .line 94
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->INVALID_URL:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->CONNECTION_FAILED:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->NO_PINNED_CERTIFICATE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->GOOD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    aput-object v1, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;---><clinit>()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 94
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
    .locals 4

    move-object/16 v1, p0

    .line 94
    const-class v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
    .locals 4

    .line 94
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;--->values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
