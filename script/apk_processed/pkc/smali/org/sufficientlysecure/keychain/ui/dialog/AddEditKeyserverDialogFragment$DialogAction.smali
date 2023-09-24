.class public final enum Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;
.super Ljava/lang/Enum;
.source "AddEditKeyserverDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

.field public static final enum ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

.field public static final enum EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 90
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    .line 91
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    const-string v1, "EDIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;---><clinit>()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 89
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;
    .locals 4

    move-object/16 v1, p0

    .line 89
    const-class v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;
    .locals 4

    .line 89
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;--->values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
