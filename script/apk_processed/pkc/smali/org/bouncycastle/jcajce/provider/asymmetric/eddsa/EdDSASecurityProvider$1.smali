.class Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider$1;
.super Ljava/lang/Object;
.source "EdDSASecurityProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/EdDSASecurityProvider;->setup()V

    const/4 v0, 0x0

    return-object v0
.end method
