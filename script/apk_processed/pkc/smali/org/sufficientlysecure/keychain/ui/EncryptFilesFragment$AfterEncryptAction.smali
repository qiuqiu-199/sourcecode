.class final enum Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;
.super Ljava/lang/Enum;
.source "EncryptFilesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AfterEncryptAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

.field public static final enum COPY:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

.field public static final enum SAVE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

.field public static final enum SHARE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 108
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    const-string v1, "SAVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SAVE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    const-string v1, "SHARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SHARE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    const-string v1, "COPY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->COPY:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SAVE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SHARE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->COPY:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;---><clinit>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 107
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;
    .locals 4

    move-object/16 v1, p0

    .line 107
    const-class v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;
    .locals 4

    .line 107
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;--->values()[Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
