.class public Lcom/android/camera/effect/renders/MosaicEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "MosaicEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "precision highp float; \nuniform sampler2D sTexture; \nuniform vec2 uStep; \nuniform vec4 uEffectRect; \nuniform int uInvertRect; \nvarying vec2 vTexCoord; \nbool isInRectF(in vec2 position) { \n    bool result =  !(position.x < uEffectRect.x || \n             position.x > uEffectRect.z || \n             position.y < uEffectRect.y || \n             position.y > uEffectRect.w); \n    return uInvertRect == 0 ? result : !result;\n} \nvec3 mosaic() { \n    vec2 step = uStep; \n    vec2 st0 = (step.x < step.y) ? \n                vec2(0.02, 0.02 * step.y/step.x) : \n                vec2(0.02*step.x/step.y, 0.02); \n    vec2 st = floor(vTexCoord/st0) * st0; \n    vec2 st1 = st + st0*0.5; \n    return 0.25 * (texture2D(sTexture, st).rgb + \n             texture2D(sTexture, st1).rgb + \n             texture2D(sTexture, vec2(st.s,st1.t)).rgb + \n             texture2D(sTexture, vec2(st1.s,st.t)).rgb); \n} \nvoid main() \n{ \n   if (isInRectF(vTexCoord)) { \n        gl_FragColor.rgb = mosaic(); \n        gl_FragColor.a = 1.0; \n    } else { \n        gl_FragColor = texture2D(sTexture, vTexCoord); \n    } \n}"

    return-object v0
.end method
