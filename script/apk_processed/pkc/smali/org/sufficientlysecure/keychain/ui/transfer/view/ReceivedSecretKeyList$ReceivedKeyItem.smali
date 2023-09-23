.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;
.super Ljava/lang/Object;
.source "ReceivedSecretKeyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceivedKeyItem"
.end annotation


# instance fields
.field private final creationMillis:J

.field private final email:Ljava/lang/String;

.field private final keyData:Ljava/lang/String;

.field private final masterKeyId:J

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-wide/16 v2, p2

    move-wide/16 p1, p4

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 207
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->keyData:Ljava/lang/String;

    .line 209
    iput-wide v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->masterKeyId:J

    .line 210
    iput-wide p1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->creationMillis:J

    .line 211
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->name:Ljava/lang/String;

    .line 212
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->email:Ljava/lang/String;

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;---><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J
    .locals 2

    .line 199
    iget-wide v0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->masterKeyId:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->email:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J
    .locals 2

    .line 199
    iget-wide v0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->creationMillis:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;
    .locals 0

    .line 199
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->keyData:Ljava/lang/String;

    return-object p0
.end method
