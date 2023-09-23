.class public final enum Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;
.super Ljava/lang/Enum;
.source "CreateKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

.field public static final enum REPLACE:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

.field public static final enum START:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

.field public static final enum TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

.field public static final enum TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 201
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->START:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    .line 202
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const-string v1, "TO_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    .line 203
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const-string v1, "TO_LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    .line 204
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const-string v1, "REPLACE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->REPLACE:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v0, 0x4

    .line 200
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->START:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->REPLACE:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    aput-object v1, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;---><clinit>()V"

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

    .line 200
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;
    .locals 4

    move-object/16 v1, p0

    .line 200
    const-class v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;
    .locals 4

    .line 200
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;--->values()[Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
